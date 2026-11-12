# sandbox_telemetry_parse — 2026-11-12 18:29:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2267239 lines=5018
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5009 |
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
| `chromeBrowserPssKb` | {'int': 5009} |
| `chromeGpuPssKb` | {'int': 5009} |
| `chromeOtherPssKb` | {'int': 5009} |
| `chromeProcesses` | {'int': 5009} |
| `chromeProfiles` | {'int': 5009} |
| `chromeRendererMaxPssKb` | {'int': 5009} |
| `chromeRendererPssKb` | {'int': 5009} |
| `chromeRenderers` | {'int': 5009} |
| `chromeTabs` | {'int': 5009} |
| `chromeTabsProbedProfiles` | {'int': 5009} |
| `chromeUtilityPssKb` | {'int': 5009} |
| `desktopPssKb` | {'int': 5009} |
| `hostPssKb` | {'int': 5009} |
| `kind` | {'str': 5009} |
| `memAvailableKb` | {'int': 5009} |
| `memTotalKb` | {'int': 5009} |
| `otherPssKb` | {'int': 5009} |
| `processes` | {'int': 5009} |
| `pssFallbackProcesses` | {'int': 5009} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
