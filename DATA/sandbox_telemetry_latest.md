# sandbox_telemetry_parse — 2026-11-24 07:31:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2187481 lines=4849
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4834 |
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
| `chromeBrowserPssKb` | {'int': 4834} |
| `chromeGpuPssKb` | {'int': 4834} |
| `chromeOtherPssKb` | {'int': 4834} |
| `chromeProcesses` | {'int': 4834} |
| `chromeProfiles` | {'int': 4834} |
| `chromeRendererMaxPssKb` | {'int': 4834} |
| `chromeRendererPssKb` | {'int': 4834} |
| `chromeRenderers` | {'int': 4834} |
| `chromeTabs` | {'int': 4834} |
| `chromeTabsProbedProfiles` | {'int': 4834} |
| `chromeUtilityPssKb` | {'int': 4834} |
| `desktopPssKb` | {'int': 4834} |
| `hostPssKb` | {'int': 4834} |
| `kind` | {'str': 4834} |
| `memAvailableKb` | {'int': 4834} |
| `memTotalKb` | {'int': 4834} |
| `otherPssKb` | {'int': 4834} |
| `processes` | {'int': 4834} |
| `pssFallbackProcesses` | {'int': 4834} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
