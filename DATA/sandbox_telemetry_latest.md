# sandbox_telemetry_parse — 2026-10-26 21:27:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=148512 lines=332
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 327 |
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
| `chromeBrowserPssKb` | {'int': 327} |
| `chromeGpuPssKb` | {'int': 327} |
| `chromeOtherPssKb` | {'int': 327} |
| `chromeProcesses` | {'int': 327} |
| `chromeProfiles` | {'int': 327} |
| `chromeRendererMaxPssKb` | {'int': 327} |
| `chromeRendererPssKb` | {'int': 327} |
| `chromeRenderers` | {'int': 327} |
| `chromeTabs` | {'int': 327} |
| `chromeTabsProbedProfiles` | {'int': 327} |
| `chromeUtilityPssKb` | {'int': 327} |
| `desktopPssKb` | {'int': 327} |
| `hostPssKb` | {'int': 327} |
| `kind` | {'str': 327} |
| `memAvailableKb` | {'int': 327} |
| `memTotalKb` | {'int': 327} |
| `otherPssKb` | {'int': 327} |
| `processes` | {'int': 327} |
| `pssFallbackProcesses` | {'int': 327} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
