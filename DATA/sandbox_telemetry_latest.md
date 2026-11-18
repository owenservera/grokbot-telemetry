# sandbox_telemetry_parse — 2026-11-18 22:24:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1002355 lines=2224
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2215 |
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
| `chromeBrowserPssKb` | {'int': 2215} |
| `chromeGpuPssKb` | {'int': 2215} |
| `chromeOtherPssKb` | {'int': 2215} |
| `chromeProcesses` | {'int': 2215} |
| `chromeProfiles` | {'int': 2215} |
| `chromeRendererMaxPssKb` | {'int': 2215} |
| `chromeRendererPssKb` | {'int': 2215} |
| `chromeRenderers` | {'int': 2215} |
| `chromeTabs` | {'int': 2215} |
| `chromeTabsProbedProfiles` | {'int': 2215} |
| `chromeUtilityPssKb` | {'int': 2215} |
| `desktopPssKb` | {'int': 2215} |
| `hostPssKb` | {'int': 2215} |
| `kind` | {'str': 2215} |
| `memAvailableKb` | {'int': 2215} |
| `memTotalKb` | {'int': 2215} |
| `otherPssKb` | {'int': 2215} |
| `processes` | {'int': 2215} |
| `pssFallbackProcesses` | {'int': 2215} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
