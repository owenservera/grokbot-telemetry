# sandbox_telemetry_parse — 2026-11-10 03:58:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=978355 lines=2170
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2161 |
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
| `chromeBrowserPssKb` | {'int': 2161} |
| `chromeGpuPssKb` | {'int': 2161} |
| `chromeOtherPssKb` | {'int': 2161} |
| `chromeProcesses` | {'int': 2161} |
| `chromeProfiles` | {'int': 2161} |
| `chromeRendererMaxPssKb` | {'int': 2161} |
| `chromeRendererPssKb` | {'int': 2161} |
| `chromeRenderers` | {'int': 2161} |
| `chromeTabs` | {'int': 2161} |
| `chromeTabsProbedProfiles` | {'int': 2161} |
| `chromeUtilityPssKb` | {'int': 2161} |
| `desktopPssKb` | {'int': 2161} |
| `hostPssKb` | {'int': 2161} |
| `kind` | {'str': 2161} |
| `memAvailableKb` | {'int': 2161} |
| `memTotalKb` | {'int': 2161} |
| `otherPssKb` | {'int': 2161} |
| `processes` | {'int': 2161} |
| `pssFallbackProcesses` | {'int': 2161} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
