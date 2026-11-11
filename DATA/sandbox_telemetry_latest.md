# sandbox_telemetry_parse — 2026-11-11 12:11:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1624059 lines=3597
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3588 |
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
| `chromeBrowserPssKb` | {'int': 3588} |
| `chromeGpuPssKb` | {'int': 3588} |
| `chromeOtherPssKb` | {'int': 3588} |
| `chromeProcesses` | {'int': 3588} |
| `chromeProfiles` | {'int': 3588} |
| `chromeRendererMaxPssKb` | {'int': 3588} |
| `chromeRendererPssKb` | {'int': 3588} |
| `chromeRenderers` | {'int': 3588} |
| `chromeTabs` | {'int': 3588} |
| `chromeTabsProbedProfiles` | {'int': 3588} |
| `chromeUtilityPssKb` | {'int': 3588} |
| `desktopPssKb` | {'int': 3588} |
| `hostPssKb` | {'int': 3588} |
| `kind` | {'str': 3588} |
| `memAvailableKb` | {'int': 3588} |
| `memTotalKb` | {'int': 3588} |
| `otherPssKb` | {'int': 3588} |
| `processes` | {'int': 3588} |
| `pssFallbackProcesses` | {'int': 3588} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
