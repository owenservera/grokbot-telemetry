# sandbox_telemetry_parse — 2026-10-26 21:35:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=152589 lines=341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 336 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 336} |
| `chromeGpuPssKb` | {'int': 336} |
| `chromeOtherPssKb` | {'int': 336} |
| `chromeProcesses` | {'int': 336} |
| `chromeProfiles` | {'int': 336} |
| `chromeRendererMaxPssKb` | {'int': 336} |
| `chromeRendererPssKb` | {'int': 336} |
| `chromeRenderers` | {'int': 336} |
| `chromeTabs` | {'int': 336} |
| `chromeTabsProbedProfiles` | {'int': 336} |
| `chromeUtilityPssKb` | {'int': 336} |
| `desktopPssKb` | {'int': 336} |
| `hostPssKb` | {'int': 336} |
| `kind` | {'str': 336} |
| `memAvailableKb` | {'int': 336} |
| `memTotalKb` | {'int': 336} |
| `otherPssKb` | {'int': 336} |
| `processes` | {'int': 336} |
| `pssFallbackProcesses` | {'int': 336} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
