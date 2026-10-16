# sandbox_telemetry_parse — 2026-10-16 14:54:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=553330 lines=2068
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1366 |
| `memory_sample` | 693 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 693} |
| `chromeGpuPssKb` | {'int': 693} |
| `chromeOtherPssKb` | {'int': 693} |
| `chromeProcesses` | {'int': 693} |
| `chromeProfiles` | {'int': 693} |
| `chromeRendererMaxPssKb` | {'int': 693} |
| `chromeRendererPssKb` | {'int': 693} |
| `chromeRenderers` | {'int': 693} |
| `chromeTabs` | {'int': 693} |
| `chromeTabsProbedProfiles` | {'int': 693} |
| `chromeUtilityPssKb` | {'int': 693} |
| `desktopPssKb` | {'int': 693} |
| `hostPssKb` | {'int': 693} |
| `kind` | {'str': 693} |
| `memAvailableKb` | {'int': 693} |
| `memTotalKb` | {'int': 693} |
| `otherPssKb` | {'int': 693} |
| `processes` | {'int': 693} |
| `pssFallbackProcesses` | {'int': 693} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1363} |
| `display` | {'int': 1366} |
| `kind` | {'str': 1366} |
| `processes` | {'int': 1366} |
| `pssKb` | {'int': 1366} |
| `rendererMaxPssKb` | {'int': 1366} |
| `renderers` | {'int': 1366} |
| `tabs` | {'int': 1365} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
