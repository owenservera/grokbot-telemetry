# sandbox_telemetry_parse — 2026-11-12 10:14:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2080243 lines=4605
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4596 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4596} |
| `chromeGpuPssKb` | {'int': 4596} |
| `chromeOtherPssKb` | {'int': 4596} |
| `chromeProcesses` | {'int': 4596} |
| `chromeProfiles` | {'int': 4596} |
| `chromeRendererMaxPssKb` | {'int': 4596} |
| `chromeRendererPssKb` | {'int': 4596} |
| `chromeRenderers` | {'int': 4596} |
| `chromeTabs` | {'int': 4596} |
| `chromeTabsProbedProfiles` | {'int': 4596} |
| `chromeUtilityPssKb` | {'int': 4596} |
| `desktopPssKb` | {'int': 4596} |
| `hostPssKb` | {'int': 4596} |
| `kind` | {'str': 4596} |
| `memAvailableKb` | {'int': 4596} |
| `memTotalKb` | {'int': 4596} |
| `otherPssKb` | {'int': 4596} |
| `processes` | {'int': 4596} |
| `pssFallbackProcesses` | {'int': 4596} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
