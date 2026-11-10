# sandbox_telemetry_parse — 2026-11-10 16:46:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1224538 lines=2714
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2705 |
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
| `chromeBrowserPssKb` | {'int': 2705} |
| `chromeGpuPssKb` | {'int': 2705} |
| `chromeOtherPssKb` | {'int': 2705} |
| `chromeProcesses` | {'int': 2705} |
| `chromeProfiles` | {'int': 2705} |
| `chromeRendererMaxPssKb` | {'int': 2705} |
| `chromeRendererPssKb` | {'int': 2705} |
| `chromeRenderers` | {'int': 2705} |
| `chromeTabs` | {'int': 2705} |
| `chromeTabsProbedProfiles` | {'int': 2705} |
| `chromeUtilityPssKb` | {'int': 2705} |
| `desktopPssKb` | {'int': 2705} |
| `hostPssKb` | {'int': 2705} |
| `kind` | {'str': 2705} |
| `memAvailableKb` | {'int': 2705} |
| `memTotalKb` | {'int': 2705} |
| `otherPssKb` | {'int': 2705} |
| `processes` | {'int': 2705} |
| `pssFallbackProcesses` | {'int': 2705} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
