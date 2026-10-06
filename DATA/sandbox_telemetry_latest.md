# sandbox_telemetry_parse — 2026-10-06 10:47:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=323954 lines=715
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 710 |
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
| `chromeBrowserPssKb` | {'int': 710} |
| `chromeGpuPssKb` | {'int': 710} |
| `chromeOtherPssKb` | {'int': 710} |
| `chromeProcesses` | {'int': 710} |
| `chromeProfiles` | {'int': 710} |
| `chromeRendererMaxPssKb` | {'int': 710} |
| `chromeRendererPssKb` | {'int': 710} |
| `chromeRenderers` | {'int': 710} |
| `chromeTabs` | {'int': 710} |
| `chromeTabsProbedProfiles` | {'int': 710} |
| `chromeUtilityPssKb` | {'int': 710} |
| `desktopPssKb` | {'int': 710} |
| `hostPssKb` | {'int': 710} |
| `kind` | {'str': 710} |
| `memAvailableKb` | {'int': 710} |
| `memTotalKb` | {'int': 710} |
| `otherPssKb` | {'int': 710} |
| `processes` | {'int': 710} |
| `pssFallbackProcesses` | {'int': 710} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
