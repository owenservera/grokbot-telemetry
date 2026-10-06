# sandbox_telemetry_parse — 2026-10-06 18:16:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=525962 lines=1158
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1153 |
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
| `chromeBrowserPssKb` | {'int': 1153} |
| `chromeGpuPssKb` | {'int': 1153} |
| `chromeOtherPssKb` | {'int': 1153} |
| `chromeProcesses` | {'int': 1153} |
| `chromeProfiles` | {'int': 1153} |
| `chromeRendererMaxPssKb` | {'int': 1153} |
| `chromeRendererPssKb` | {'int': 1153} |
| `chromeRenderers` | {'int': 1153} |
| `chromeTabs` | {'int': 1153} |
| `chromeTabsProbedProfiles` | {'int': 1153} |
| `chromeUtilityPssKb` | {'int': 1153} |
| `desktopPssKb` | {'int': 1153} |
| `hostPssKb` | {'int': 1153} |
| `kind` | {'str': 1153} |
| `memAvailableKb` | {'int': 1153} |
| `memTotalKb` | {'int': 1153} |
| `otherPssKb` | {'int': 1153} |
| `processes` | {'int': 1153} |
| `pssFallbackProcesses` | {'int': 1153} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
