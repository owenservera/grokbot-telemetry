# sandbox_telemetry_parse — 2026-10-07 14:03:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1061485 lines=2332
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2327 |
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
| `chromeBrowserPssKb` | {'int': 2327} |
| `chromeGpuPssKb` | {'int': 2327} |
| `chromeOtherPssKb` | {'int': 2327} |
| `chromeProcesses` | {'int': 2327} |
| `chromeProfiles` | {'int': 2327} |
| `chromeRendererMaxPssKb` | {'int': 2327} |
| `chromeRendererPssKb` | {'int': 2327} |
| `chromeRenderers` | {'int': 2327} |
| `chromeTabs` | {'int': 2327} |
| `chromeTabsProbedProfiles` | {'int': 2327} |
| `chromeUtilityPssKb` | {'int': 2327} |
| `desktopPssKb` | {'int': 2327} |
| `hostPssKb` | {'int': 2327} |
| `kind` | {'str': 2327} |
| `memAvailableKb` | {'int': 2327} |
| `memTotalKb` | {'int': 2327} |
| `otherPssKb` | {'int': 2327} |
| `processes` | {'int': 2327} |
| `pssFallbackProcesses` | {'int': 2327} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
