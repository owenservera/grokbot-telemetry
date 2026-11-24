# sandbox_telemetry_parse — 2026-11-24 19:09:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2410544 lines=5342
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5327 |
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
| `chromeBrowserPssKb` | {'int': 5327} |
| `chromeGpuPssKb` | {'int': 5327} |
| `chromeOtherPssKb` | {'int': 5327} |
| `chromeProcesses` | {'int': 5327} |
| `chromeProfiles` | {'int': 5327} |
| `chromeRendererMaxPssKb` | {'int': 5327} |
| `chromeRendererPssKb` | {'int': 5327} |
| `chromeRenderers` | {'int': 5327} |
| `chromeTabs` | {'int': 5327} |
| `chromeTabsProbedProfiles` | {'int': 5327} |
| `chromeUtilityPssKb` | {'int': 5327} |
| `desktopPssKb` | {'int': 5327} |
| `hostPssKb` | {'int': 5327} |
| `kind` | {'str': 5327} |
| `memAvailableKb` | {'int': 5327} |
| `memTotalKb` | {'int': 5327} |
| `otherPssKb` | {'int': 5327} |
| `processes` | {'int': 5327} |
| `pssFallbackProcesses` | {'int': 5327} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
