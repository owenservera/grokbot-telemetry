# sandbox_telemetry_parse — 2026-11-11 06:31:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1507780 lines=3340
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3331 |
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
| `chromeBrowserPssKb` | {'int': 3331} |
| `chromeGpuPssKb` | {'int': 3331} |
| `chromeOtherPssKb` | {'int': 3331} |
| `chromeProcesses` | {'int': 3331} |
| `chromeProfiles` | {'int': 3331} |
| `chromeRendererMaxPssKb` | {'int': 3331} |
| `chromeRendererPssKb` | {'int': 3331} |
| `chromeRenderers` | {'int': 3331} |
| `chromeTabs` | {'int': 3331} |
| `chromeTabsProbedProfiles` | {'int': 3331} |
| `chromeUtilityPssKb` | {'int': 3331} |
| `desktopPssKb` | {'int': 3331} |
| `hostPssKb` | {'int': 3331} |
| `kind` | {'str': 3331} |
| `memAvailableKb` | {'int': 3331} |
| `memTotalKb` | {'int': 3331} |
| `otherPssKb` | {'int': 3331} |
| `processes` | {'int': 3331} |
| `pssFallbackProcesses` | {'int': 3331} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
