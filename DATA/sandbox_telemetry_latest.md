# sandbox_telemetry_parse — 2026-10-06 19:39:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=563354 lines=1240
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1235 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1235} |
| `chromeGpuPssKb` | {'int': 1235} |
| `chromeOtherPssKb` | {'int': 1235} |
| `chromeProcesses` | {'int': 1235} |
| `chromeProfiles` | {'int': 1235} |
| `chromeRendererMaxPssKb` | {'int': 1235} |
| `chromeRendererPssKb` | {'int': 1235} |
| `chromeRenderers` | {'int': 1235} |
| `chromeTabs` | {'int': 1235} |
| `chromeTabsProbedProfiles` | {'int': 1235} |
| `chromeUtilityPssKb` | {'int': 1235} |
| `desktopPssKb` | {'int': 1235} |
| `hostPssKb` | {'int': 1235} |
| `kind` | {'str': 1235} |
| `memAvailableKb` | {'int': 1235} |
| `memTotalKb` | {'int': 1235} |
| `otherPssKb` | {'int': 1235} |
| `processes` | {'int': 1235} |
| `pssFallbackProcesses` | {'int': 1235} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
