# sandbox_telemetry_parse — 2026-11-28 17:42:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=989676 lines=2194
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2186 |
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
| `chromeBrowserPssKb` | {'int': 2186} |
| `chromeGpuPssKb` | {'int': 2186} |
| `chromeOtherPssKb` | {'int': 2186} |
| `chromeProcesses` | {'int': 2186} |
| `chromeProfiles` | {'int': 2186} |
| `chromeRendererMaxPssKb` | {'int': 2186} |
| `chromeRendererPssKb` | {'int': 2186} |
| `chromeRenderers` | {'int': 2186} |
| `chromeTabs` | {'int': 2186} |
| `chromeTabsProbedProfiles` | {'int': 2186} |
| `chromeUtilityPssKb` | {'int': 2186} |
| `desktopPssKb` | {'int': 2186} |
| `hostPssKb` | {'int': 2186} |
| `kind` | {'str': 2186} |
| `memAvailableKb` | {'int': 2186} |
| `memTotalKb` | {'int': 2186} |
| `otherPssKb` | {'int': 2186} |
| `processes` | {'int': 2186} |
| `pssFallbackProcesses` | {'int': 2186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
