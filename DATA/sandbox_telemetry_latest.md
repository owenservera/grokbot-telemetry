# sandbox_telemetry_parse — 2026-10-26 17:00:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=32091 lines=75
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 70 |
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
| `chromeBrowserPssKb` | {'int': 70} |
| `chromeGpuPssKb` | {'int': 70} |
| `chromeOtherPssKb` | {'int': 70} |
| `chromeProcesses` | {'int': 70} |
| `chromeProfiles` | {'int': 70} |
| `chromeRendererMaxPssKb` | {'int': 70} |
| `chromeRendererPssKb` | {'int': 70} |
| `chromeRenderers` | {'int': 70} |
| `chromeTabs` | {'int': 70} |
| `chromeTabsProbedProfiles` | {'int': 70} |
| `chromeUtilityPssKb` | {'int': 70} |
| `desktopPssKb` | {'int': 70} |
| `hostPssKb` | {'int': 70} |
| `kind` | {'str': 70} |
| `memAvailableKb` | {'int': 70} |
| `memTotalKb` | {'int': 70} |
| `otherPssKb` | {'int': 70} |
| `processes` | {'int': 70} |
| `pssFallbackProcesses` | {'int': 70} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
