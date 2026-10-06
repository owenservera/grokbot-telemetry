# sandbox_telemetry_parse — 2026-10-06 07:31:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=234578 lines=519
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 514 |
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
| `chromeBrowserPssKb` | {'int': 514} |
| `chromeGpuPssKb` | {'int': 514} |
| `chromeOtherPssKb` | {'int': 514} |
| `chromeProcesses` | {'int': 514} |
| `chromeProfiles` | {'int': 514} |
| `chromeRendererMaxPssKb` | {'int': 514} |
| `chromeRendererPssKb` | {'int': 514} |
| `chromeRenderers` | {'int': 514} |
| `chromeTabs` | {'int': 514} |
| `chromeTabsProbedProfiles` | {'int': 514} |
| `chromeUtilityPssKb` | {'int': 514} |
| `desktopPssKb` | {'int': 514} |
| `hostPssKb` | {'int': 514} |
| `kind` | {'str': 514} |
| `memAvailableKb` | {'int': 514} |
| `memTotalKb` | {'int': 514} |
| `otherPssKb` | {'int': 514} |
| `processes` | {'int': 514} |
| `pssFallbackProcesses` | {'int': 514} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
