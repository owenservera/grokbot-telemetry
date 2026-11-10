# sandbox_telemetry_parse — 2026-11-10 21:47:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1337276 lines=2963
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2954 |
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
| `chromeBrowserPssKb` | {'int': 2954} |
| `chromeGpuPssKb` | {'int': 2954} |
| `chromeOtherPssKb` | {'int': 2954} |
| `chromeProcesses` | {'int': 2954} |
| `chromeProfiles` | {'int': 2954} |
| `chromeRendererMaxPssKb` | {'int': 2954} |
| `chromeRendererPssKb` | {'int': 2954} |
| `chromeRenderers` | {'int': 2954} |
| `chromeTabs` | {'int': 2954} |
| `chromeTabsProbedProfiles` | {'int': 2954} |
| `chromeUtilityPssKb` | {'int': 2954} |
| `desktopPssKb` | {'int': 2954} |
| `hostPssKb` | {'int': 2954} |
| `kind` | {'str': 2954} |
| `memAvailableKb` | {'int': 2954} |
| `memTotalKb` | {'int': 2954} |
| `otherPssKb` | {'int': 2954} |
| `processes` | {'int': 2954} |
| `pssFallbackProcesses` | {'int': 2954} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
