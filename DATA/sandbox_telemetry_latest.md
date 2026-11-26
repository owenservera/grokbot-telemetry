# sandbox_telemetry_parse — 2026-11-26 17:49:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=17822 lines=46
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 38 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 38} |
| `chromeGpuPssKb` | {'int': 38} |
| `chromeOtherPssKb` | {'int': 38} |
| `chromeProcesses` | {'int': 38} |
| `chromeProfiles` | {'int': 38} |
| `chromeRendererMaxPssKb` | {'int': 38} |
| `chromeRendererPssKb` | {'int': 38} |
| `chromeRenderers` | {'int': 38} |
| `chromeTabs` | {'int': 38} |
| `chromeTabsProbedProfiles` | {'int': 38} |
| `chromeUtilityPssKb` | {'int': 38} |
| `desktopPssKb` | {'int': 38} |
| `hostPssKb` | {'int': 38} |
| `kind` | {'str': 38} |
| `memAvailableKb` | {'int': 38} |
| `memTotalKb` | {'int': 38} |
| `otherPssKb` | {'int': 38} |
| `processes` | {'int': 38} |
| `pssFallbackProcesses` | {'int': 38} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
