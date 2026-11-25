# sandbox_telemetry_parse — 2026-11-25 04:21:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2590559 lines=5740
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5725 |
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
| `chromeBrowserPssKb` | {'int': 5725} |
| `chromeGpuPssKb` | {'int': 5725} |
| `chromeOtherPssKb` | {'int': 5725} |
| `chromeProcesses` | {'int': 5725} |
| `chromeProfiles` | {'int': 5725} |
| `chromeRendererMaxPssKb` | {'int': 5725} |
| `chromeRendererPssKb` | {'int': 5725} |
| `chromeRenderers` | {'int': 5725} |
| `chromeTabs` | {'int': 5725} |
| `chromeTabsProbedProfiles` | {'int': 5725} |
| `chromeUtilityPssKb` | {'int': 5725} |
| `desktopPssKb` | {'int': 5725} |
| `hostPssKb` | {'int': 5725} |
| `kind` | {'str': 5725} |
| `memAvailableKb` | {'int': 5725} |
| `memTotalKb` | {'int': 5725} |
| `otherPssKb` | {'int': 5725} |
| `processes` | {'int': 5725} |
| `pssFallbackProcesses` | {'int': 5725} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
