# sandbox_telemetry_parse — 2026-10-15 05:26:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=686506 lines=1523
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1518 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1518} |
| `chromeGpuPssKb` | {'int': 1518} |
| `chromeOtherPssKb` | {'int': 1518} |
| `chromeProcesses` | {'int': 1518} |
| `chromeProfiles` | {'int': 1518} |
| `chromeRendererMaxPssKb` | {'int': 1518} |
| `chromeRendererPssKb` | {'int': 1518} |
| `chromeRenderers` | {'int': 1518} |
| `chromeTabs` | {'int': 1518} |
| `chromeTabsProbedProfiles` | {'int': 1518} |
| `chromeUtilityPssKb` | {'int': 1518} |
| `desktopPssKb` | {'int': 1518} |
| `hostPssKb` | {'int': 1518} |
| `kind` | {'str': 1518} |
| `memAvailableKb` | {'int': 1518} |
| `memTotalKb` | {'int': 1518} |
| `otherPssKb` | {'int': 1518} |
| `processes` | {'int': 1518} |
| `pssFallbackProcesses` | {'int': 1518} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
