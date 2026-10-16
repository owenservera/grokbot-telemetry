# sandbox_telemetry_parse — 2026-10-16 11:48:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=416070 lines=1555
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1024 |
| `memory_sample` | 522 |
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
| `chromeBrowserPssKb` | {'int': 522} |
| `chromeGpuPssKb` | {'int': 522} |
| `chromeOtherPssKb` | {'int': 522} |
| `chromeProcesses` | {'int': 522} |
| `chromeProfiles` | {'int': 522} |
| `chromeRendererMaxPssKb` | {'int': 522} |
| `chromeRendererPssKb` | {'int': 522} |
| `chromeRenderers` | {'int': 522} |
| `chromeTabs` | {'int': 522} |
| `chromeTabsProbedProfiles` | {'int': 522} |
| `chromeUtilityPssKb` | {'int': 522} |
| `desktopPssKb` | {'int': 522} |
| `hostPssKb` | {'int': 522} |
| `kind` | {'str': 522} |
| `memAvailableKb` | {'int': 522} |
| `memTotalKb` | {'int': 522} |
| `otherPssKb` | {'int': 522} |
| `processes` | {'int': 522} |
| `pssFallbackProcesses` | {'int': 522} |

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
| `cpuMillicores` | {'int': 1021} |
| `display` | {'int': 1024} |
| `kind` | {'str': 1024} |
| `processes` | {'int': 1024} |
| `pssKb` | {'int': 1024} |
| `rendererMaxPssKb` | {'int': 1024} |
| `renderers` | {'int': 1024} |
| `tabs` | {'int': 1023} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
