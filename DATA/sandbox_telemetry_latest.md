# sandbox_telemetry_parse — 2026-10-14 10:08:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=226822 lines=506
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 501 |
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
| `chromeBrowserPssKb` | {'int': 501} |
| `chromeGpuPssKb` | {'int': 501} |
| `chromeOtherPssKb` | {'int': 501} |
| `chromeProcesses` | {'int': 501} |
| `chromeProfiles` | {'int': 501} |
| `chromeRendererMaxPssKb` | {'int': 501} |
| `chromeRendererPssKb` | {'int': 501} |
| `chromeRenderers` | {'int': 501} |
| `chromeTabs` | {'int': 501} |
| `chromeTabsProbedProfiles` | {'int': 501} |
| `chromeUtilityPssKb` | {'int': 501} |
| `desktopPssKb` | {'int': 501} |
| `hostPssKb` | {'int': 501} |
| `kind` | {'str': 501} |
| `memAvailableKb` | {'int': 501} |
| `memTotalKb` | {'int': 501} |
| `otherPssKb` | {'int': 501} |
| `processes` | {'int': 501} |
| `pssFallbackProcesses` | {'int': 501} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
