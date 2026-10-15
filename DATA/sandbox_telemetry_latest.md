# sandbox_telemetry_parse — 2026-10-15 16:25:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=948666 lines=2103
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2098 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2098} |
| `chromeGpuPssKb` | {'int': 2098} |
| `chromeOtherPssKb` | {'int': 2098} |
| `chromeProcesses` | {'int': 2098} |
| `chromeProfiles` | {'int': 2098} |
| `chromeRendererMaxPssKb` | {'int': 2098} |
| `chromeRendererPssKb` | {'int': 2098} |
| `chromeRenderers` | {'int': 2098} |
| `chromeTabs` | {'int': 2098} |
| `chromeTabsProbedProfiles` | {'int': 2098} |
| `chromeUtilityPssKb` | {'int': 2098} |
| `desktopPssKb` | {'int': 2098} |
| `hostPssKb` | {'int': 2098} |
| `kind` | {'str': 2098} |
| `memAvailableKb` | {'int': 2098} |
| `memTotalKb` | {'int': 2098} |
| `otherPssKb` | {'int': 2098} |
| `processes` | {'int': 2098} |
| `pssFallbackProcesses` | {'int': 2098} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
