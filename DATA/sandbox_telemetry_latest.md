# sandbox_telemetry_parse — 2026-10-16 15:25:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=577399 lines=2158
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1426 |
| `memory_sample` | 723 |
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
| `chromeBrowserPssKb` | {'int': 723} |
| `chromeGpuPssKb` | {'int': 723} |
| `chromeOtherPssKb` | {'int': 723} |
| `chromeProcesses` | {'int': 723} |
| `chromeProfiles` | {'int': 723} |
| `chromeRendererMaxPssKb` | {'int': 723} |
| `chromeRendererPssKb` | {'int': 723} |
| `chromeRenderers` | {'int': 723} |
| `chromeTabs` | {'int': 723} |
| `chromeTabsProbedProfiles` | {'int': 723} |
| `chromeUtilityPssKb` | {'int': 723} |
| `desktopPssKb` | {'int': 723} |
| `hostPssKb` | {'int': 723} |
| `kind` | {'str': 723} |
| `memAvailableKb` | {'int': 723} |
| `memTotalKb` | {'int': 723} |
| `otherPssKb` | {'int': 723} |
| `processes` | {'int': 723} |
| `pssFallbackProcesses` | {'int': 723} |

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
| `cpuMillicores` | {'int': 1423} |
| `display` | {'int': 1426} |
| `kind` | {'str': 1426} |
| `processes` | {'int': 1426} |
| `pssKb` | {'int': 1426} |
| `rendererMaxPssKb` | {'int': 1426} |
| `renderers` | {'int': 1426} |
| `tabs` | {'int': 1425} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
