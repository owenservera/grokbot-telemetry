# sandbox_telemetry_parse — 2026-10-16 18:05:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=701003 lines=2620
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1734 |
| `memory_sample` | 877 |
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
| `chromeBrowserPssKb` | {'int': 877} |
| `chromeGpuPssKb` | {'int': 877} |
| `chromeOtherPssKb` | {'int': 877} |
| `chromeProcesses` | {'int': 877} |
| `chromeProfiles` | {'int': 877} |
| `chromeRendererMaxPssKb` | {'int': 877} |
| `chromeRendererPssKb` | {'int': 877} |
| `chromeRenderers` | {'int': 877} |
| `chromeTabs` | {'int': 877} |
| `chromeTabsProbedProfiles` | {'int': 877} |
| `chromeUtilityPssKb` | {'int': 877} |
| `desktopPssKb` | {'int': 877} |
| `hostPssKb` | {'int': 877} |
| `kind` | {'str': 877} |
| `memAvailableKb` | {'int': 877} |
| `memTotalKb` | {'int': 877} |
| `otherPssKb` | {'int': 877} |
| `processes` | {'int': 877} |
| `pssFallbackProcesses` | {'int': 877} |

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
| `cpuMillicores` | {'int': 1731} |
| `display` | {'int': 1734} |
| `kind` | {'str': 1734} |
| `processes` | {'int': 1734} |
| `pssKb` | {'int': 1734} |
| `rendererMaxPssKb` | {'int': 1734} |
| `renderers` | {'int': 1734} |
| `tabs` | {'int': 1733} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
