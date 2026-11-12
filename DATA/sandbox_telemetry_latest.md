# sandbox_telemetry_parse — 2026-11-12 01:18:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1905112 lines=4218
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4209 |
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
| `chromeBrowserPssKb` | {'int': 4209} |
| `chromeGpuPssKb` | {'int': 4209} |
| `chromeOtherPssKb` | {'int': 4209} |
| `chromeProcesses` | {'int': 4209} |
| `chromeProfiles` | {'int': 4209} |
| `chromeRendererMaxPssKb` | {'int': 4209} |
| `chromeRendererPssKb` | {'int': 4209} |
| `chromeRenderers` | {'int': 4209} |
| `chromeTabs` | {'int': 4209} |
| `chromeTabsProbedProfiles` | {'int': 4209} |
| `chromeUtilityPssKb` | {'int': 4209} |
| `desktopPssKb` | {'int': 4209} |
| `hostPssKb` | {'int': 4209} |
| `kind` | {'str': 4209} |
| `memAvailableKb` | {'int': 4209} |
| `memTotalKb` | {'int': 4209} |
| `otherPssKb` | {'int': 4209} |
| `processes` | {'int': 4209} |
| `pssFallbackProcesses` | {'int': 4209} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
