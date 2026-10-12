# sandbox_telemetry_parse — 2026-10-13 01:40:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=763822 lines=1759
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1645 |
| `chrome_profile_sample` | 106 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1645} |
| `chromeGpuPssKb` | {'int': 1645} |
| `chromeOtherPssKb` | {'int': 1645} |
| `chromeProcesses` | {'int': 1645} |
| `chromeProfiles` | {'int': 1645} |
| `chromeRendererMaxPssKb` | {'int': 1645} |
| `chromeRendererPssKb` | {'int': 1645} |
| `chromeRenderers` | {'int': 1645} |
| `chromeTabs` | {'int': 1645} |
| `chromeTabsProbedProfiles` | {'int': 1645} |
| `chromeUtilityPssKb` | {'int': 1645} |
| `desktopPssKb` | {'int': 1645} |
| `hostPssKb` | {'int': 1645} |
| `kind` | {'str': 1645} |
| `memAvailableKb` | {'int': 1645} |
| `memTotalKb` | {'int': 1645} |
| `otherPssKb` | {'int': 1645} |
| `processes` | {'int': 1645} |
| `pssFallbackProcesses` | {'int': 1645} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 105} |
| `display` | {'int': 106} |
| `kind` | {'str': 106} |
| `processes` | {'int': 106} |
| `pssKb` | {'int': 106} |
| `rendererMaxPssKb` | {'int': 106} |
| `renderers` | {'int': 106} |
| `tabs` | {'int': 106} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
