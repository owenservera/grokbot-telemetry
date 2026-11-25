# sandbox_telemetry_parse — 2026-11-25 11:52:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2745682 lines=6083
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6068 |
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
| `chromeBrowserPssKb` | {'int': 6068} |
| `chromeGpuPssKb` | {'int': 6068} |
| `chromeOtherPssKb` | {'int': 6068} |
| `chromeProcesses` | {'int': 6068} |
| `chromeProfiles` | {'int': 6068} |
| `chromeRendererMaxPssKb` | {'int': 6068} |
| `chromeRendererPssKb` | {'int': 6068} |
| `chromeRenderers` | {'int': 6068} |
| `chromeTabs` | {'int': 6068} |
| `chromeTabsProbedProfiles` | {'int': 6068} |
| `chromeUtilityPssKb` | {'int': 6068} |
| `desktopPssKb` | {'int': 6068} |
| `hostPssKb` | {'int': 6068} |
| `kind` | {'str': 6068} |
| `memAvailableKb` | {'int': 6068} |
| `memTotalKb` | {'int': 6068} |
| `otherPssKb` | {'int': 6068} |
| `processes` | {'int': 6068} |
| `pssFallbackProcesses` | {'int': 6068} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
