# sandbox_telemetry_parse — 2026-10-16 01:46:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1161927 lines=2580
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2567 |
| `chrome_profile_sample` | 5 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2567} |
| `chromeGpuPssKb` | {'int': 2567} |
| `chromeOtherPssKb` | {'int': 2567} |
| `chromeProcesses` | {'int': 2567} |
| `chromeProfiles` | {'int': 2567} |
| `chromeRendererMaxPssKb` | {'int': 2567} |
| `chromeRendererPssKb` | {'int': 2567} |
| `chromeRenderers` | {'int': 2567} |
| `chromeTabs` | {'int': 2567} |
| `chromeTabsProbedProfiles` | {'int': 2567} |
| `chromeUtilityPssKb` | {'int': 2567} |
| `desktopPssKb` | {'int': 2567} |
| `hostPssKb` | {'int': 2567} |
| `kind` | {'str': 2567} |
| `memAvailableKb` | {'int': 2567} |
| `memTotalKb` | {'int': 2567} |
| `otherPssKb` | {'int': 2567} |
| `processes` | {'int': 2567} |
| `pssFallbackProcesses` | {'int': 2567} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 4} |
| `display` | {'int': 5} |
| `kind` | {'str': 5} |
| `processes` | {'int': 5} |
| `pssKb` | {'int': 5} |
| `rendererMaxPssKb` | {'int': 5} |
| `renderers` | {'int': 5} |
| `tabs` | {'int': 5} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
