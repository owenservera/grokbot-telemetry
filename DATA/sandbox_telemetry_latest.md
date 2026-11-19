# sandbox_telemetry_parse — 2026-11-20 00:29:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1508230 lines=3344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3333 |
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
| `chromeBrowserPssKb` | {'int': 3333} |
| `chromeGpuPssKb` | {'int': 3333} |
| `chromeOtherPssKb` | {'int': 3333} |
| `chromeProcesses` | {'int': 3333} |
| `chromeProfiles` | {'int': 3333} |
| `chromeRendererMaxPssKb` | {'int': 3333} |
| `chromeRendererPssKb` | {'int': 3333} |
| `chromeRenderers` | {'int': 3333} |
| `chromeTabs` | {'int': 3333} |
| `chromeTabsProbedProfiles` | {'int': 3333} |
| `chromeUtilityPssKb` | {'int': 3333} |
| `desktopPssKb` | {'int': 3333} |
| `hostPssKb` | {'int': 3333} |
| `kind` | {'str': 3333} |
| `memAvailableKb` | {'int': 3333} |
| `memTotalKb` | {'int': 3333} |
| `otherPssKb` | {'int': 3333} |
| `processes` | {'int': 3333} |
| `pssFallbackProcesses` | {'int': 3333} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
