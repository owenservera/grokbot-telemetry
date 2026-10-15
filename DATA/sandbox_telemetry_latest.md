# sandbox_telemetry_parse — 2026-10-15 03:00:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=630006 lines=1398
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1393 |
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
| `chromeBrowserPssKb` | {'int': 1393} |
| `chromeGpuPssKb` | {'int': 1393} |
| `chromeOtherPssKb` | {'int': 1393} |
| `chromeProcesses` | {'int': 1393} |
| `chromeProfiles` | {'int': 1393} |
| `chromeRendererMaxPssKb` | {'int': 1393} |
| `chromeRendererPssKb` | {'int': 1393} |
| `chromeRenderers` | {'int': 1393} |
| `chromeTabs` | {'int': 1393} |
| `chromeTabsProbedProfiles` | {'int': 1393} |
| `chromeUtilityPssKb` | {'int': 1393} |
| `desktopPssKb` | {'int': 1393} |
| `hostPssKb` | {'int': 1393} |
| `kind` | {'str': 1393} |
| `memAvailableKb` | {'int': 1393} |
| `memTotalKb` | {'int': 1393} |
| `otherPssKb` | {'int': 1393} |
| `processes` | {'int': 1393} |
| `pssFallbackProcesses` | {'int': 1393} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
