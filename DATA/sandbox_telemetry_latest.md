# sandbox_telemetry_parse — 2026-11-24 10:23:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2243100 lines=4972
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4957 |
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
| `chromeBrowserPssKb` | {'int': 4957} |
| `chromeGpuPssKb` | {'int': 4957} |
| `chromeOtherPssKb` | {'int': 4957} |
| `chromeProcesses` | {'int': 4957} |
| `chromeProfiles` | {'int': 4957} |
| `chromeRendererMaxPssKb` | {'int': 4957} |
| `chromeRendererPssKb` | {'int': 4957} |
| `chromeRenderers` | {'int': 4957} |
| `chromeTabs` | {'int': 4957} |
| `chromeTabsProbedProfiles` | {'int': 4957} |
| `chromeUtilityPssKb` | {'int': 4957} |
| `desktopPssKb` | {'int': 4957} |
| `hostPssKb` | {'int': 4957} |
| `kind` | {'str': 4957} |
| `memAvailableKb` | {'int': 4957} |
| `memTotalKb` | {'int': 4957} |
| `otherPssKb` | {'int': 4957} |
| `processes` | {'int': 4957} |
| `pssFallbackProcesses` | {'int': 4957} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
