# sandbox_telemetry_parse — 2026-10-27 04:51:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=330012 lines=733
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 728 |
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
| `chromeBrowserPssKb` | {'int': 728} |
| `chromeGpuPssKb` | {'int': 728} |
| `chromeOtherPssKb` | {'int': 728} |
| `chromeProcesses` | {'int': 728} |
| `chromeProfiles` | {'int': 728} |
| `chromeRendererMaxPssKb` | {'int': 728} |
| `chromeRendererPssKb` | {'int': 728} |
| `chromeRenderers` | {'int': 728} |
| `chromeTabs` | {'int': 728} |
| `chromeTabsProbedProfiles` | {'int': 728} |
| `chromeUtilityPssKb` | {'int': 728} |
| `desktopPssKb` | {'int': 728} |
| `hostPssKb` | {'int': 728} |
| `kind` | {'str': 728} |
| `memAvailableKb` | {'int': 728} |
| `memTotalKb` | {'int': 728} |
| `otherPssKb` | {'int': 728} |
| `processes` | {'int': 728} |
| `pssFallbackProcesses` | {'int': 728} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
