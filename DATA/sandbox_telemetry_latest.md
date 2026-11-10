# sandbox_telemetry_parse — 2026-11-10 17:47:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1250359 lines=2771
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2762 |
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
| `chromeBrowserPssKb` | {'int': 2762} |
| `chromeGpuPssKb` | {'int': 2762} |
| `chromeOtherPssKb` | {'int': 2762} |
| `chromeProcesses` | {'int': 2762} |
| `chromeProfiles` | {'int': 2762} |
| `chromeRendererMaxPssKb` | {'int': 2762} |
| `chromeRendererPssKb` | {'int': 2762} |
| `chromeRenderers` | {'int': 2762} |
| `chromeTabs` | {'int': 2762} |
| `chromeTabsProbedProfiles` | {'int': 2762} |
| `chromeUtilityPssKb` | {'int': 2762} |
| `desktopPssKb` | {'int': 2762} |
| `hostPssKb` | {'int': 2762} |
| `kind` | {'str': 2762} |
| `memAvailableKb` | {'int': 2762} |
| `memTotalKb` | {'int': 2762} |
| `otherPssKb` | {'int': 2762} |
| `processes` | {'int': 2762} |
| `pssFallbackProcesses` | {'int': 2762} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
