# sandbox_telemetry_parse — 2026-11-18 22:07:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=995111 lines=2208
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2199 |
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
| `chromeBrowserPssKb` | {'int': 2199} |
| `chromeGpuPssKb` | {'int': 2199} |
| `chromeOtherPssKb` | {'int': 2199} |
| `chromeProcesses` | {'int': 2199} |
| `chromeProfiles` | {'int': 2199} |
| `chromeRendererMaxPssKb` | {'int': 2199} |
| `chromeRendererPssKb` | {'int': 2199} |
| `chromeRenderers` | {'int': 2199} |
| `chromeTabs` | {'int': 2199} |
| `chromeTabsProbedProfiles` | {'int': 2199} |
| `chromeUtilityPssKb` | {'int': 2199} |
| `desktopPssKb` | {'int': 2199} |
| `hostPssKb` | {'int': 2199} |
| `kind` | {'str': 2199} |
| `memAvailableKb` | {'int': 2199} |
| `memTotalKb` | {'int': 2199} |
| `otherPssKb` | {'int': 2199} |
| `processes` | {'int': 2199} |
| `pssFallbackProcesses` | {'int': 2199} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
