# sandbox_telemetry_parse — 2026-11-11 06:50:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1511848 lines=3349
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3340 |
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
| `chromeBrowserPssKb` | {'int': 3340} |
| `chromeGpuPssKb` | {'int': 3340} |
| `chromeOtherPssKb` | {'int': 3340} |
| `chromeProcesses` | {'int': 3340} |
| `chromeProfiles` | {'int': 3340} |
| `chromeRendererMaxPssKb` | {'int': 3340} |
| `chromeRendererPssKb` | {'int': 3340} |
| `chromeRenderers` | {'int': 3340} |
| `chromeTabs` | {'int': 3340} |
| `chromeTabsProbedProfiles` | {'int': 3340} |
| `chromeUtilityPssKb` | {'int': 3340} |
| `desktopPssKb` | {'int': 3340} |
| `hostPssKb` | {'int': 3340} |
| `kind` | {'str': 3340} |
| `memAvailableKb` | {'int': 3340} |
| `memTotalKb` | {'int': 3340} |
| `otherPssKb` | {'int': 3340} |
| `processes` | {'int': 3340} |
| `pssFallbackProcesses` | {'int': 3340} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
