# sandbox_telemetry_parse — 2026-11-19 19:31:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1412342 lines=3132
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3121 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3121} |
| `chromeGpuPssKb` | {'int': 3121} |
| `chromeOtherPssKb` | {'int': 3121} |
| `chromeProcesses` | {'int': 3121} |
| `chromeProfiles` | {'int': 3121} |
| `chromeRendererMaxPssKb` | {'int': 3121} |
| `chromeRendererPssKb` | {'int': 3121} |
| `chromeRenderers` | {'int': 3121} |
| `chromeTabs` | {'int': 3121} |
| `chromeTabsProbedProfiles` | {'int': 3121} |
| `chromeUtilityPssKb` | {'int': 3121} |
| `desktopPssKb` | {'int': 3121} |
| `hostPssKb` | {'int': 3121} |
| `kind` | {'str': 3121} |
| `memAvailableKb` | {'int': 3121} |
| `memTotalKb` | {'int': 3121} |
| `otherPssKb` | {'int': 3121} |
| `processes` | {'int': 3121} |
| `pssFallbackProcesses` | {'int': 3121} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
