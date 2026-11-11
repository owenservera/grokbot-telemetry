# sandbox_telemetry_parse — 2026-11-12 00:33:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1890164 lines=4185
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4176 |
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
| `chromeBrowserPssKb` | {'int': 4176} |
| `chromeGpuPssKb` | {'int': 4176} |
| `chromeOtherPssKb` | {'int': 4176} |
| `chromeProcesses` | {'int': 4176} |
| `chromeProfiles` | {'int': 4176} |
| `chromeRendererMaxPssKb` | {'int': 4176} |
| `chromeRendererPssKb` | {'int': 4176} |
| `chromeRenderers` | {'int': 4176} |
| `chromeTabs` | {'int': 4176} |
| `chromeTabsProbedProfiles` | {'int': 4176} |
| `chromeUtilityPssKb` | {'int': 4176} |
| `desktopPssKb` | {'int': 4176} |
| `hostPssKb` | {'int': 4176} |
| `kind` | {'str': 4176} |
| `memAvailableKb` | {'int': 4176} |
| `memTotalKb` | {'int': 4176} |
| `otherPssKb` | {'int': 4176} |
| `processes` | {'int': 4176} |
| `pssFallbackProcesses` | {'int': 4176} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
