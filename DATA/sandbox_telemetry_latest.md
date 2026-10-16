# sandbox_telemetry_parse — 2026-10-16 11:16:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=392012 lines=1465
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 964 |
| `memory_sample` | 492 |
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
| `chromeBrowserPssKb` | {'int': 492} |
| `chromeGpuPssKb` | {'int': 492} |
| `chromeOtherPssKb` | {'int': 492} |
| `chromeProcesses` | {'int': 492} |
| `chromeProfiles` | {'int': 492} |
| `chromeRendererMaxPssKb` | {'int': 492} |
| `chromeRendererPssKb` | {'int': 492} |
| `chromeRenderers` | {'int': 492} |
| `chromeTabs` | {'int': 492} |
| `chromeTabsProbedProfiles` | {'int': 492} |
| `chromeUtilityPssKb` | {'int': 492} |
| `desktopPssKb` | {'int': 492} |
| `hostPssKb` | {'int': 492} |
| `kind` | {'str': 492} |
| `memAvailableKb` | {'int': 492} |
| `memTotalKb` | {'int': 492} |
| `otherPssKb` | {'int': 492} |
| `processes` | {'int': 492} |
| `pssFallbackProcesses` | {'int': 492} |

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
| `cpuMillicores` | {'int': 961} |
| `display` | {'int': 964} |
| `kind` | {'str': 964} |
| `processes` | {'int': 964} |
| `pssKb` | {'int': 964} |
| `rendererMaxPssKb` | {'int': 964} |
| `renderers` | {'int': 964} |
| `tabs` | {'int': 963} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
