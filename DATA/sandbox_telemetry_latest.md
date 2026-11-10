# sandbox_telemetry_parse — 2026-11-10 02:02:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=940799 lines=2087
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2078 |
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
| `chromeBrowserPssKb` | {'int': 2078} |
| `chromeGpuPssKb` | {'int': 2078} |
| `chromeOtherPssKb` | {'int': 2078} |
| `chromeProcesses` | {'int': 2078} |
| `chromeProfiles` | {'int': 2078} |
| `chromeRendererMaxPssKb` | {'int': 2078} |
| `chromeRendererPssKb` | {'int': 2078} |
| `chromeRenderers` | {'int': 2078} |
| `chromeTabs` | {'int': 2078} |
| `chromeTabsProbedProfiles` | {'int': 2078} |
| `chromeUtilityPssKb` | {'int': 2078} |
| `desktopPssKb` | {'int': 2078} |
| `hostPssKb` | {'int': 2078} |
| `kind` | {'str': 2078} |
| `memAvailableKb` | {'int': 2078} |
| `memTotalKb` | {'int': 2078} |
| `otherPssKb` | {'int': 2078} |
| `processes` | {'int': 2078} |
| `pssFallbackProcesses` | {'int': 2078} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
