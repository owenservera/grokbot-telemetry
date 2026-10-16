# sandbox_telemetry_parse — 2026-10-16 10:45:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=371978 lines=1390
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 914 |
| `memory_sample` | 467 |
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
| `chromeBrowserPssKb` | {'int': 467} |
| `chromeGpuPssKb` | {'int': 467} |
| `chromeOtherPssKb` | {'int': 467} |
| `chromeProcesses` | {'int': 467} |
| `chromeProfiles` | {'int': 467} |
| `chromeRendererMaxPssKb` | {'int': 467} |
| `chromeRendererPssKb` | {'int': 467} |
| `chromeRenderers` | {'int': 467} |
| `chromeTabs` | {'int': 467} |
| `chromeTabsProbedProfiles` | {'int': 467} |
| `chromeUtilityPssKb` | {'int': 467} |
| `desktopPssKb` | {'int': 467} |
| `hostPssKb` | {'int': 467} |
| `kind` | {'str': 467} |
| `memAvailableKb` | {'int': 467} |
| `memTotalKb` | {'int': 467} |
| `otherPssKb` | {'int': 467} |
| `processes` | {'int': 467} |
| `pssFallbackProcesses` | {'int': 467} |

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
| `cpuMillicores` | {'int': 911} |
| `display` | {'int': 914} |
| `kind` | {'str': 914} |
| `processes` | {'int': 914} |
| `pssKb` | {'int': 914} |
| `rendererMaxPssKb` | {'int': 914} |
| `renderers` | {'int': 914} |
| `tabs` | {'int': 913} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
