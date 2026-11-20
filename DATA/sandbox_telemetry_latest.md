# sandbox_telemetry_parse — 2026-11-20 14:57:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1763691 lines=3909
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3898 |
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
| `chromeBrowserPssKb` | {'int': 3898} |
| `chromeGpuPssKb` | {'int': 3898} |
| `chromeOtherPssKb` | {'int': 3898} |
| `chromeProcesses` | {'int': 3898} |
| `chromeProfiles` | {'int': 3898} |
| `chromeRendererMaxPssKb` | {'int': 3898} |
| `chromeRendererPssKb` | {'int': 3898} |
| `chromeRenderers` | {'int': 3898} |
| `chromeTabs` | {'int': 3898} |
| `chromeTabsProbedProfiles` | {'int': 3898} |
| `chromeUtilityPssKb` | {'int': 3898} |
| `desktopPssKb` | {'int': 3898} |
| `hostPssKb` | {'int': 3898} |
| `kind` | {'str': 3898} |
| `memAvailableKb` | {'int': 3898} |
| `memTotalKb` | {'int': 3898} |
| `otherPssKb` | {'int': 3898} |
| `processes` | {'int': 3898} |
| `pssFallbackProcesses` | {'int': 3898} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
