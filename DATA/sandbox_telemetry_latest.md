# sandbox_telemetry_parse — 2026-10-06 06:23:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=204026 lines=452
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 447 |
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
| `chromeBrowserPssKb` | {'int': 447} |
| `chromeGpuPssKb` | {'int': 447} |
| `chromeOtherPssKb` | {'int': 447} |
| `chromeProcesses` | {'int': 447} |
| `chromeProfiles` | {'int': 447} |
| `chromeRendererMaxPssKb` | {'int': 447} |
| `chromeRendererPssKb` | {'int': 447} |
| `chromeRenderers` | {'int': 447} |
| `chromeTabs` | {'int': 447} |
| `chromeTabsProbedProfiles` | {'int': 447} |
| `chromeUtilityPssKb` | {'int': 447} |
| `desktopPssKb` | {'int': 447} |
| `hostPssKb` | {'int': 447} |
| `kind` | {'str': 447} |
| `memAvailableKb` | {'int': 447} |
| `memTotalKb` | {'int': 447} |
| `otherPssKb` | {'int': 447} |
| `processes` | {'int': 447} |
| `pssFallbackProcesses` | {'int': 447} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
