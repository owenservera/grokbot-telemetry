# sandbox_telemetry_parse — 2026-10-16 21:14:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=835908 lines=3124
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2070 |
| `memory_sample` | 1045 |
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
| `chromeBrowserPssKb` | {'int': 1045} |
| `chromeGpuPssKb` | {'int': 1045} |
| `chromeOtherPssKb` | {'int': 1045} |
| `chromeProcesses` | {'int': 1045} |
| `chromeProfiles` | {'int': 1045} |
| `chromeRendererMaxPssKb` | {'int': 1045} |
| `chromeRendererPssKb` | {'int': 1045} |
| `chromeRenderers` | {'int': 1045} |
| `chromeTabs` | {'int': 1045} |
| `chromeTabsProbedProfiles` | {'int': 1045} |
| `chromeUtilityPssKb` | {'int': 1045} |
| `desktopPssKb` | {'int': 1045} |
| `hostPssKb` | {'int': 1045} |
| `kind` | {'str': 1045} |
| `memAvailableKb` | {'int': 1045} |
| `memTotalKb` | {'int': 1045} |
| `otherPssKb` | {'int': 1045} |
| `processes` | {'int': 1045} |
| `pssFallbackProcesses` | {'int': 1045} |

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
| `cpuMillicores` | {'int': 2067} |
| `display` | {'int': 2070} |
| `kind` | {'str': 2070} |
| `processes` | {'int': 2070} |
| `pssKb` | {'int': 2070} |
| `rendererMaxPssKb` | {'int': 2070} |
| `renderers` | {'int': 2070} |
| `tabs` | {'int': 2069} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
