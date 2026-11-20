# sandbox_telemetry_parse — 2026-11-20 13:05:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1726139 lines=3826
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3815 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3815} |
| `chromeGpuPssKb` | {'int': 3815} |
| `chromeOtherPssKb` | {'int': 3815} |
| `chromeProcesses` | {'int': 3815} |
| `chromeProfiles` | {'int': 3815} |
| `chromeRendererMaxPssKb` | {'int': 3815} |
| `chromeRendererPssKb` | {'int': 3815} |
| `chromeRenderers` | {'int': 3815} |
| `chromeTabs` | {'int': 3815} |
| `chromeTabsProbedProfiles` | {'int': 3815} |
| `chromeUtilityPssKb` | {'int': 3815} |
| `desktopPssKb` | {'int': 3815} |
| `hostPssKb` | {'int': 3815} |
| `kind` | {'str': 3815} |
| `memAvailableKb` | {'int': 3815} |
| `memTotalKb` | {'int': 3815} |
| `otherPssKb` | {'int': 3815} |
| `processes` | {'int': 3815} |
| `pssFallbackProcesses` | {'int': 3815} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
