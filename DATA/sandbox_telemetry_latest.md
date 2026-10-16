# sandbox_telemetry_parse — 2026-10-16 16:39:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=635164 lines=2374
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1570 |
| `memory_sample` | 795 |
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
| `chromeBrowserPssKb` | {'int': 795} |
| `chromeGpuPssKb` | {'int': 795} |
| `chromeOtherPssKb` | {'int': 795} |
| `chromeProcesses` | {'int': 795} |
| `chromeProfiles` | {'int': 795} |
| `chromeRendererMaxPssKb` | {'int': 795} |
| `chromeRendererPssKb` | {'int': 795} |
| `chromeRenderers` | {'int': 795} |
| `chromeTabs` | {'int': 795} |
| `chromeTabsProbedProfiles` | {'int': 795} |
| `chromeUtilityPssKb` | {'int': 795} |
| `desktopPssKb` | {'int': 795} |
| `hostPssKb` | {'int': 795} |
| `kind` | {'str': 795} |
| `memAvailableKb` | {'int': 795} |
| `memTotalKb` | {'int': 795} |
| `otherPssKb` | {'int': 795} |
| `processes` | {'int': 795} |
| `pssFallbackProcesses` | {'int': 795} |

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
| `cpuMillicores` | {'int': 1567} |
| `display` | {'int': 1570} |
| `kind` | {'str': 1570} |
| `processes` | {'int': 1570} |
| `pssKb` | {'int': 1570} |
| `rendererMaxPssKb` | {'int': 1570} |
| `renderers` | {'int': 1570} |
| `tabs` | {'int': 1569} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
