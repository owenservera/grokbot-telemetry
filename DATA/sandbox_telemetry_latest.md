# sandbox_telemetry_parse — 2026-10-16 17:30:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=672898 lines=2515
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1664 |
| `memory_sample` | 842 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 842} |
| `chromeGpuPssKb` | {'int': 842} |
| `chromeOtherPssKb` | {'int': 842} |
| `chromeProcesses` | {'int': 842} |
| `chromeProfiles` | {'int': 842} |
| `chromeRendererMaxPssKb` | {'int': 842} |
| `chromeRendererPssKb` | {'int': 842} |
| `chromeRenderers` | {'int': 842} |
| `chromeTabs` | {'int': 842} |
| `chromeTabsProbedProfiles` | {'int': 842} |
| `chromeUtilityPssKb` | {'int': 842} |
| `desktopPssKb` | {'int': 842} |
| `hostPssKb` | {'int': 842} |
| `kind` | {'str': 842} |
| `memAvailableKb` | {'int': 842} |
| `memTotalKb` | {'int': 842} |
| `otherPssKb` | {'int': 842} |
| `processes` | {'int': 842} |
| `pssFallbackProcesses` | {'int': 842} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 1661} |
| `display` | {'int': 1664} |
| `kind` | {'str': 1664} |
| `processes` | {'int': 1664} |
| `pssKb` | {'int': 1664} |
| `rendererMaxPssKb` | {'int': 1664} |
| `renderers` | {'int': 1664} |
| `tabs` | {'int': 1663} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
