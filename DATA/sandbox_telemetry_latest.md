# sandbox_telemetry_parse — 2026-11-12 00:43:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1894693 lines=4195
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4186 |
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
| `chromeBrowserPssKb` | {'int': 4186} |
| `chromeGpuPssKb` | {'int': 4186} |
| `chromeOtherPssKb` | {'int': 4186} |
| `chromeProcesses` | {'int': 4186} |
| `chromeProfiles` | {'int': 4186} |
| `chromeRendererMaxPssKb` | {'int': 4186} |
| `chromeRendererPssKb` | {'int': 4186} |
| `chromeRenderers` | {'int': 4186} |
| `chromeTabs` | {'int': 4186} |
| `chromeTabsProbedProfiles` | {'int': 4186} |
| `chromeUtilityPssKb` | {'int': 4186} |
| `desktopPssKb` | {'int': 4186} |
| `hostPssKb` | {'int': 4186} |
| `kind` | {'str': 4186} |
| `memAvailableKb` | {'int': 4186} |
| `memTotalKb` | {'int': 4186} |
| `otherPssKb` | {'int': 4186} |
| `processes` | {'int': 4186} |
| `pssFallbackProcesses` | {'int': 4186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
