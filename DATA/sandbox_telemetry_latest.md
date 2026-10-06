# sandbox_telemetry_parse — 2026-10-06 02:56:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=110090 lines=246
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 241 |
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
| `chromeBrowserPssKb` | {'int': 241} |
| `chromeGpuPssKb` | {'int': 241} |
| `chromeOtherPssKb` | {'int': 241} |
| `chromeProcesses` | {'int': 241} |
| `chromeProfiles` | {'int': 241} |
| `chromeRendererMaxPssKb` | {'int': 241} |
| `chromeRendererPssKb` | {'int': 241} |
| `chromeRenderers` | {'int': 241} |
| `chromeTabs` | {'int': 241} |
| `chromeTabsProbedProfiles` | {'int': 241} |
| `chromeUtilityPssKb` | {'int': 241} |
| `desktopPssKb` | {'int': 241} |
| `hostPssKb` | {'int': 241} |
| `kind` | {'str': 241} |
| `memAvailableKb` | {'int': 241} |
| `memTotalKb` | {'int': 241} |
| `otherPssKb` | {'int': 241} |
| `processes` | {'int': 241} |
| `pssFallbackProcesses` | {'int': 241} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
