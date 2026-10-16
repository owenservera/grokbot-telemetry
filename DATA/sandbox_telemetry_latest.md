# sandbox_telemetry_parse — 2026-10-16 07:13:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=221860 lines=829
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 540 |
| `memory_sample` | 280 |
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
| `chromeBrowserPssKb` | {'int': 280} |
| `chromeGpuPssKb` | {'int': 280} |
| `chromeOtherPssKb` | {'int': 280} |
| `chromeProcesses` | {'int': 280} |
| `chromeProfiles` | {'int': 280} |
| `chromeRendererMaxPssKb` | {'int': 280} |
| `chromeRendererPssKb` | {'int': 280} |
| `chromeRenderers` | {'int': 280} |
| `chromeTabs` | {'int': 280} |
| `chromeTabsProbedProfiles` | {'int': 280} |
| `chromeUtilityPssKb` | {'int': 280} |
| `desktopPssKb` | {'int': 280} |
| `hostPssKb` | {'int': 280} |
| `kind` | {'str': 280} |
| `memAvailableKb` | {'int': 280} |
| `memTotalKb` | {'int': 280} |
| `otherPssKb` | {'int': 280} |
| `processes` | {'int': 280} |
| `pssFallbackProcesses` | {'int': 280} |

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
| `cpuMillicores` | {'int': 537} |
| `display` | {'int': 540} |
| `kind` | {'str': 540} |
| `processes` | {'int': 540} |
| `pssKb` | {'int': 540} |
| `rendererMaxPssKb` | {'int': 540} |
| `renderers` | {'int': 540} |
| `tabs` | {'int': 539} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
