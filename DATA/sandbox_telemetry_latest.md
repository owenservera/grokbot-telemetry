# sandbox_telemetry_parse — 2026-11-10 02:33:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=953030 lines=2114
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2105 |
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
| `chromeBrowserPssKb` | {'int': 2105} |
| `chromeGpuPssKb` | {'int': 2105} |
| `chromeOtherPssKb` | {'int': 2105} |
| `chromeProcesses` | {'int': 2105} |
| `chromeProfiles` | {'int': 2105} |
| `chromeRendererMaxPssKb` | {'int': 2105} |
| `chromeRendererPssKb` | {'int': 2105} |
| `chromeRenderers` | {'int': 2105} |
| `chromeTabs` | {'int': 2105} |
| `chromeTabsProbedProfiles` | {'int': 2105} |
| `chromeUtilityPssKb` | {'int': 2105} |
| `desktopPssKb` | {'int': 2105} |
| `hostPssKb` | {'int': 2105} |
| `kind` | {'str': 2105} |
| `memAvailableKb` | {'int': 2105} |
| `memTotalKb` | {'int': 2105} |
| `otherPssKb` | {'int': 2105} |
| `processes` | {'int': 2105} |
| `pssFallbackProcesses` | {'int': 2105} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
