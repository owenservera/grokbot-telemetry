# sandbox_telemetry_parse — 2026-11-23 17:02:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1917862 lines=4253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4238 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4238} |
| `chromeGpuPssKb` | {'int': 4238} |
| `chromeOtherPssKb` | {'int': 4238} |
| `chromeProcesses` | {'int': 4238} |
| `chromeProfiles` | {'int': 4238} |
| `chromeRendererMaxPssKb` | {'int': 4238} |
| `chromeRendererPssKb` | {'int': 4238} |
| `chromeRenderers` | {'int': 4238} |
| `chromeTabs` | {'int': 4238} |
| `chromeTabsProbedProfiles` | {'int': 4238} |
| `chromeUtilityPssKb` | {'int': 4238} |
| `desktopPssKb` | {'int': 4238} |
| `hostPssKb` | {'int': 4238} |
| `kind` | {'str': 4238} |
| `memAvailableKb` | {'int': 4238} |
| `memTotalKb` | {'int': 4238} |
| `otherPssKb` | {'int': 4238} |
| `processes` | {'int': 4238} |
| `pssFallbackProcesses` | {'int': 4238} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
