# sandbox_telemetry_parse — 2026-10-07 12:30:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1019077 lines=2239
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2234 |
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
| `chromeBrowserPssKb` | {'int': 2234} |
| `chromeGpuPssKb` | {'int': 2234} |
| `chromeOtherPssKb` | {'int': 2234} |
| `chromeProcesses` | {'int': 2234} |
| `chromeProfiles` | {'int': 2234} |
| `chromeRendererMaxPssKb` | {'int': 2234} |
| `chromeRendererPssKb` | {'int': 2234} |
| `chromeRenderers` | {'int': 2234} |
| `chromeTabs` | {'int': 2234} |
| `chromeTabsProbedProfiles` | {'int': 2234} |
| `chromeUtilityPssKb` | {'int': 2234} |
| `desktopPssKb` | {'int': 2234} |
| `hostPssKb` | {'int': 2234} |
| `kind` | {'str': 2234} |
| `memAvailableKb` | {'int': 2234} |
| `memTotalKb` | {'int': 2234} |
| `otherPssKb` | {'int': 2234} |
| `processes` | {'int': 2234} |
| `pssFallbackProcesses` | {'int': 2234} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
