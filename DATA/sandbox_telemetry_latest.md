# sandbox_telemetry_parse — 2026-11-16 16:25:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=41717 lines=98
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 91 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 91} |
| `chromeGpuPssKb` | {'int': 91} |
| `chromeOtherPssKb` | {'int': 91} |
| `chromeProcesses` | {'int': 91} |
| `chromeProfiles` | {'int': 91} |
| `chromeRendererMaxPssKb` | {'int': 91} |
| `chromeRendererPssKb` | {'int': 91} |
| `chromeRenderers` | {'int': 91} |
| `chromeTabs` | {'int': 91} |
| `chromeTabsProbedProfiles` | {'int': 91} |
| `chromeUtilityPssKb` | {'int': 91} |
| `desktopPssKb` | {'int': 91} |
| `hostPssKb` | {'int': 91} |
| `kind` | {'str': 91} |
| `memAvailableKb` | {'int': 91} |
| `memTotalKb` | {'int': 91} |
| `otherPssKb` | {'int': 91} |
| `processes` | {'int': 91} |
| `pssFallbackProcesses` | {'int': 91} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
