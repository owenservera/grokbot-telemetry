# sandbox_telemetry_parse — 2026-10-16 20:59:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=825467 lines=3085
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2044 |
| `memory_sample` | 1032 |
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
| `chromeBrowserPssKb` | {'int': 1032} |
| `chromeGpuPssKb` | {'int': 1032} |
| `chromeOtherPssKb` | {'int': 1032} |
| `chromeProcesses` | {'int': 1032} |
| `chromeProfiles` | {'int': 1032} |
| `chromeRendererMaxPssKb` | {'int': 1032} |
| `chromeRendererPssKb` | {'int': 1032} |
| `chromeRenderers` | {'int': 1032} |
| `chromeTabs` | {'int': 1032} |
| `chromeTabsProbedProfiles` | {'int': 1032} |
| `chromeUtilityPssKb` | {'int': 1032} |
| `desktopPssKb` | {'int': 1032} |
| `hostPssKb` | {'int': 1032} |
| `kind` | {'str': 1032} |
| `memAvailableKb` | {'int': 1032} |
| `memTotalKb` | {'int': 1032} |
| `otherPssKb` | {'int': 1032} |
| `processes` | {'int': 1032} |
| `pssFallbackProcesses` | {'int': 1032} |

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
| `cpuMillicores` | {'int': 2041} |
| `display` | {'int': 2044} |
| `kind` | {'str': 2044} |
| `processes` | {'int': 2044} |
| `pssKb` | {'int': 2044} |
| `rendererMaxPssKb` | {'int': 2044} |
| `renderers` | {'int': 2044} |
| `tabs` | {'int': 2043} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
