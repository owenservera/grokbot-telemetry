# sandbox_telemetry_parse — 2026-10-27 03:13:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=288880 lines=642
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 637 |
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
| `chromeBrowserPssKb` | {'int': 637} |
| `chromeGpuPssKb` | {'int': 637} |
| `chromeOtherPssKb` | {'int': 637} |
| `chromeProcesses` | {'int': 637} |
| `chromeProfiles` | {'int': 637} |
| `chromeRendererMaxPssKb` | {'int': 637} |
| `chromeRendererPssKb` | {'int': 637} |
| `chromeRenderers` | {'int': 637} |
| `chromeTabs` | {'int': 637} |
| `chromeTabsProbedProfiles` | {'int': 637} |
| `chromeUtilityPssKb` | {'int': 637} |
| `desktopPssKb` | {'int': 637} |
| `hostPssKb` | {'int': 637} |
| `kind` | {'str': 637} |
| `memAvailableKb` | {'int': 637} |
| `memTotalKb` | {'int': 637} |
| `otherPssKb` | {'int': 637} |
| `processes` | {'int': 637} |
| `pssFallbackProcesses` | {'int': 637} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
