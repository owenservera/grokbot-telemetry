# sandbox_telemetry_parse — 2026-10-26 21:58:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=162555 lines=363
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 358 |
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
| `chromeBrowserPssKb` | {'int': 358} |
| `chromeGpuPssKb` | {'int': 358} |
| `chromeOtherPssKb` | {'int': 358} |
| `chromeProcesses` | {'int': 358} |
| `chromeProfiles` | {'int': 358} |
| `chromeRendererMaxPssKb` | {'int': 358} |
| `chromeRendererPssKb` | {'int': 358} |
| `chromeRenderers` | {'int': 358} |
| `chromeTabs` | {'int': 358} |
| `chromeTabsProbedProfiles` | {'int': 358} |
| `chromeUtilityPssKb` | {'int': 358} |
| `desktopPssKb` | {'int': 358} |
| `hostPssKb` | {'int': 358} |
| `kind` | {'str': 358} |
| `memAvailableKb` | {'int': 358} |
| `memTotalKb` | {'int': 358} |
| `otherPssKb` | {'int': 358} |
| `processes` | {'int': 358} |
| `pssFallbackProcesses` | {'int': 358} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
